.class public Lcom/google/appinventor/components/runtime/FusiontablesControl;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "FusiontablesControl.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that communicates with Google Fusion Tables. Fusion Tables let you store, share, query and visualize data tables; this component lets you query, create, and modify these tables.</p> <p>This component uses the <a href=\"https://developers.google.com/fusiontables/docs/v1/getting_started\" target=\"_blank\">Fusion Tables API V1.0</a>. <p>In order to develop apps that use Fusiontables, you must obtain an API Key.<p>To get an API key, follow these instructions.</p> <ol><li>Go to your <a href=\"https://code.google.com/apis/console/\" target=\"_blank\">Google APIs Console</a> and login if necessary.</li><li>Select the <i>Services</i> item from the menu on the left.</li><li>Choose the <i>Fusiontables</i> service from the list provided and turn it on.</li><li>Go back to the main menu and select the <i>API Access</i> item. </li></ol><p>Your API Key will be near the bottom of that pane in the section called \"Simple API Access\".You will have to provide that key as the value for the <i>ApiKey</i> property in your Fusiontables app.</p><p>Once you have an API key, set the value of the <i>Query</i> property to a valid Fusiontables SQL query and call <i>SendQuery</i> to execute the query.  App Inventor will send the query to the Fusion Tables server and the <i>GotResult</i> block will fire when a result is returned from the server.Query results will be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks.</p><p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure the query follows the syntax described in <a href=\"https://developers.google.com/fusiontables/docs/v1/getting_started\" target=\"_blank\">the reference manual</a>, which means that things like capitalization for names of columns matters, and that single quotes must be used around column names if there are spaces in them.</p>"
    iconName = "images/fusiontables.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "fusiontables.jar,google-api-client-beta.jar,google-api-client-android2-beta.jar,google-http-client-beta.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client-beta.jar,guava-14.0.1.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCOUNT_MANAGER,android.permission.MANAGE_ACCOUNTS,android.permission.GET_ACCOUNTS,android.permission.USE_CREDENTIALS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;,
        Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "App Inventor"

.field public static final AUTHORIZATION_HEADER_PREFIX:Ljava/lang/String; = "Bearer "

.field public static final AUTH_TOKEN_TYPE_FUSIONTABLES:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/fusiontables"

.field private static final DEFAULT_QUERY:Ljava/lang/String; = "show tables"

.field private static final DIALOG_TEXT:Ljava/lang/String; = "Choose an account to access FusionTables"

.field public static final FUSIONTABLES_POST:Ljava/lang/String; = "https://www.googleapis.com/fusiontables/v1/tables"

.field private static final FUSIONTABLES_SERVICE:Ljava/lang/String; = "fusiontables"

.field public static final FUSIONTABLES_URL:Ljava/lang/String; = "https://www.googleapis.com/fusiontables/v1/query"

.field private static final FUSION_QUERY_URL:Ljava/lang/String; = "http://www.google.com/fusiontables/api/query"

.field private static final LOG_TAG:Ljava/lang/String; = "fusion"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530


# instance fields
.field private final activity:Landroid/app/Activity;

.field private apiKey:Ljava/lang/String;

.field private authTokenType:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private queryResultStr:Ljava/lang/String;

.field private final requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .parameter "componentContainer"

    .prologue
    .line 173
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 145
    const-string v0, "oauth2:https://www.googleapis.com/auth/fusiontables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;

    .line 167
    const-string v0, "Error on Fusiontables query"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    .line 174
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    .line 175
    const-string v0, "Choose an account to access FusionTables"

    const-string v1, "fusiontables"

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    .line 176
    const-string v0, "show tables"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 179
    const-string v0, "Sorry. The Fusiontables component is not compatible with this phone."

    const-string v1, "This application must exit."

    const-string v2, "Rats!"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->authTokenType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method private createClientLoginHelper(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;
    .locals 4
    .parameter "accountPrompt"
    .parameter "service"

    .prologue
    const/16 v3, 0x7530

    .line 296
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 297
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 298
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 299
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 300
    new-instance v1, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p2, p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    .line 302
    .end local v0           #httpClient:Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "query"
    .parameter "authToken"

    .prologue
    .line 548
    const/4 v8, 0x0

    .line 549
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "create table"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, jsonContent:Ljava/lang/String;
    const-string v10, "fusion"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http Post content = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, entity:Lorg/apache/http/entity/StringEntity;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://www.googleapis.com/fusiontables/v1/tables?key="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 557
    .local v7, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .local v3, entity:Lorg/apache/http/entity/StringEntity;
    const-string v10, "application/json"

    invoke-virtual {v3, v10}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 563
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bearer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {v7, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 568
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 570
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_1
    invoke-interface {v0, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 582
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 583
    .local v9, statusCode:I
    if-eqz v8, :cond_1

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_1

    .line 585
    :try_start_2
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, jsonResult:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 587
    .local v5, jsonObj:Lorg/json/JSONObject;
    const-string v10, "tableId"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 588
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tableId,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tableId"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 600
    :goto_0
    const-string v10, "fusion"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v10, "fusion"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Query = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\nResultStr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #jsonResult:Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    move-object v2, v3

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v9           #statusCode:I
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    :goto_2
    return-object v10

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 560
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 571
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v1

    .line 572
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    goto :goto_2

    .line 574
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v1

    .line 575
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 576
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    goto :goto_2

    .line 590
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    .restart local v6       #jsonResult:Ljava/lang/String;
    .restart local v9       #statusCode:I
    :cond_0
    :try_start_3
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 593
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #jsonResult:Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 594
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 595
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    goto :goto_2

    .line 596
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v1

    .line 597
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 598
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v3

    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    goto/16 :goto_2

    .line 604
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    :cond_1
    const-string v10, "fusion"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->queryResultStr:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private genFusiontablesQuery(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.google.com/fusiontables/api/query"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .local v1, pair:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sql"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 314
    .local v0, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 316
    return-object v2
.end method

.method public static httpApacheResponseToString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 447
    const-string v1, ""

    .line 448
    .local v1, resultStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 449
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    :cond_0
    :goto_0
    return-object v1

    .line 454
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .parameter "response"

    .prologue
    .line 424
    const-string v1, ""

    .line 425
    .local v1, resultStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    :cond_0
    :goto_0
    return-object v1

    .line 430
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .parameter "input"

    .prologue
    .line 469
    const-string v3, ""

    .line 471
    .local v3, resultStr:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 473
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 483
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 485
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v3

    .line 479
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    const-string v5, "fusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resultStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private parseSqlCreateQueryToJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "query"

    .prologue
    const/16 v10, 0x28

    const/4 v9, 0x0

    .line 512
    const-string v6, "fusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsetoJSonSqlCreate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v2, jsonContent:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 515
    const-string v6, "create table"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, tableName:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x29

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, columnsList:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, columnSpecs:[Ljava/lang/String;
    const-string v6, "{\'columns\':["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 520
    aget-object v6, v0, v3

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, nameTypePair:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\'name\': \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \'type\': \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_0

    .line 523
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    .end local v4           #nameTypePair:[Ljava/lang/String;
    :cond_1
    const-string v6, "],"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v6, "\'isExportable\':\'true\',"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'name\': \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v6, "CREATE TABLE "

    invoke-virtual {v2, v9, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v6, "fusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private showNoticeAndDie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"

    .prologue
    .line 200
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 201
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 204
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v1, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$1;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 210
    return-void
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Google API Key. For help, click on the questionmark (?) next to the FusiontablesControl component in the Palette. "
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .parameter "apiKey"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->apiKey:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public DoQuery()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "DEPRECATED. This block will be deprecated by the end of 2012.  Use SendQuery."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->requestHelper:Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Lcom/google/appinventor/components/runtime/FusiontablesControl$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "DoQuery"

    const/4 v2, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public ForgetLogin()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    .line 291
    return-void
.end method

.method public GotResult(Ljava/lang/String;)V
    .locals 3
    .parameter "result"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the Fusion Tables query has finished processing, with a result.  The result of the query will generally be returned in CSV format, and can be converted to list format using the \"list from csv table\" or \"list from csv row\" blocks."
    .end annotation

    .prologue
    .line 283
    const-string v0, "GotResult"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public Query()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The query to send to the Fusion Tables API. <p>For legal query formats and examples, see the <a href=\"https://developers.google.com/fusiontables/docs/v1/getting_started\" target=\"_blank\">Fusion Tables API v1.0 reference manual</a>.</p> <p>Note that you do not need to worry about UTF-encoding the query. But you do need to make sure it follows the syntax described in the reference manual, which means that things like capitalization for names of columns matters, and that single quotes need to be used around column names if there are spaces in them.</p> "
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    return-object v0
.end method

.method public Query(Ljava/lang/String;)V
    .locals 0
    .parameter "query"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "show tables"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public SendQuery()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the query to the Fusiontables server."
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;-><init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->query:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void
.end method

.method public handleOAuthError(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 494
    const-string v0, "fusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOAuthError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;
    .locals 8
    .parameter "query"
    .parameter "authToken"

    .prologue
    .line 383
    const-string v4, "fusion"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x0

    .line 387
    .local v1, response:Lcom/google/api/client/http/HttpResponse;
    new-instance v4, Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v5

    new-instance v6, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v6}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    new-instance v7, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v7}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    invoke-direct {v4, v5, v6, v7}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v5, "App Inventor Fusiontables/v1.0"

    invoke-virtual {v4, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ApiKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/api/client/googleapis/services/GoogleKeyInitializer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->setJsonHttpRequestInitializer(Lcom/google/api/client/http/json/JsonHttpRequestInitializer;)Lcom/google/api/services/fusiontables/Fusiontables$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/fusiontables/Fusiontables$Builder;->build()Lcom/google/api/services/fusiontables/Fusiontables;

    move-result-object v2

    .line 398
    .local v2, service:Lcom/google/api/services/fusiontables/Fusiontables;
    :try_start_0
    invoke-virtual {v2}, Lcom/google/api/services/fusiontables/Fusiontables;->query()Lcom/google/api/services/fusiontables/Fusiontables$Query;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/api/services/fusiontables/Fusiontables$Query;->sql(Ljava/lang/String;)Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;

    move-result-object v3

    .line 400
    .local v3, sql:Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    const-string v4, "alt"

    const-string v5, "csv"

    invoke-virtual {v3, v4, v5}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual {v3, p2}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/fusiontables/FusiontablesRequest;

    .line 405
    invoke-virtual {v3}, Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 414
    .end local v3           #sql:Lcom/google/api/services/fusiontables/Fusiontables$Query$Sql;
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->printStackTrace()V

    .line 409
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 410
    .end local v0           #e:Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    :catch_1
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl;->errorMessage:Ljava/lang/String;

    goto :goto_0
.end method
