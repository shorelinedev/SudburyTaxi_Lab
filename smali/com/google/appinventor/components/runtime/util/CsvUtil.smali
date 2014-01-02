.class public final Lcom/google/appinventor/components/runtime/util/CsvUtil;
.super Ljava/lang/Object;
.source "CsvUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .parameter "csvString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v0, csvParser:Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 42
    .local v1, row:Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CSV text has multiple rows. Expected just one row."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->throwAnyProblem()V

    .line 47
    return-object v1

    .line 49
    .end local v1           #row:Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CSV text cannot be parsed as a row."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .parameter "csvString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v1, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;-><init>(Ljava/io/Reader;)V

    .line 30
    .local v1, csvParser:Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, csvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->throwAnyProblem()V

    .line 35
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method private static makeCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter "row"
    .parameter "csvStringBuilder"

    .prologue
    .line 75
    const-string v2, ""

    .line 76
    .local v2, fieldDelim:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 77
    .local v3, fieldObj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, field:Ljava/lang/String;
    const-string v6, "\""

    const-string v7, "\"\""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, ","

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    .end local v1           #field:Ljava/lang/String;
    .end local v3           #fieldObj:Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static toCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 2
    .parameter "csvRow"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, csvStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->makeCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toCsvTable(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .locals 6
    .parameter "csvList"

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v1, csvStringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 65
    .local v4, rowObj:Ljava/lang/Object;
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v4           #rowObj:Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->makeCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V

    .line 69
    const-string v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
