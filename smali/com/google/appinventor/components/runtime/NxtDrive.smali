.class public Lcom/google/appinventor/components/runtime/NxtDrive;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDrive.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final MODE_BRAKE:I = 0x2

.field private static final MODE_MOTORON:I = 0x1

.field private static final MODE_REGULATED:I = 0x4

.field private static final MOTOR_RUN_STATE_IDLE:I = 0x0

.field private static final MOTOR_RUN_STATE_RAMPDOWN:I = 0x40

.field private static final MOTOR_RUN_STATE_RAMPUP:I = 0x10

.field private static final MOTOR_RUN_STATE_RUNNING:I = 0x20

.field private static final REGULATION_MODE_IDLE:I = 0x0

.field private static final REGULATION_MODE_MOTOR_SPEED:I = 0x1

.field private static final REGULATION_MODE_MOTOR_SYNC:I = 0x2


# instance fields
.field private driveMotorPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private driveMotors:Ljava/lang/String;

.field private stopBeforeDisconnect:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 61
    const-string v0, "NxtDrive"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 63
    const-string v0, "CB"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->DriveMotors(Ljava/lang/String;)V

    .line 64
    const v0, 0x408a3d71

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->WheelDiameter(F)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->StopBeforeDisconnect(Z)V

    .line 66
    return-void
.end method

.method private move(Ljava/lang/String;IJ)V
    .locals 11
    .parameter "functionName"
    .parameter "power"
    .parameter "tachoLimit"

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, port:I
    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    move-wide v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method

.method private turnIndefinitely(Ljava/lang/String;III)V
    .locals 10
    .parameter "functionName"
    .parameter "power"
    .parameter "forwardMotorIndex"
    .parameter "reverseMotorIndex"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    neg-int v3, p2

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that are used for driving: the left wheel\'s motor port followed by the right wheel\'s motor port."
        userVisible = false
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotors:Ljava/lang/String;

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 9
    .parameter "motorPortLetters"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CB"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotors:Ljava/lang/String;

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 100
    .local v0, ch:C
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->convertMotorPortLetterToNumber(C)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "DriveMotors"

    const/16 v5, 0x197

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    .end local v0           #ch:C
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 8
    .parameter "power"
    .parameter "distance"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .prologue
    .line 173
    const-wide v2, 0x4076800000000000L

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 175
    .local v0, tachoLimit:J
    const-string v2, "MoveBackward"

    neg-int v3, p1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 176
    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 4
    .parameter "power"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .prologue
    .line 159
    const-string v0, "MoveBackwardIndefinitely"

    neg-int v1, p1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 160
    return-void
.end method

.method public MoveForward(ID)V
    .locals 8
    .parameter "power"
    .parameter "distance"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .prologue
    .line 165
    const-wide v2, 0x4076800000000000L

    mul-double/2addr v2, p2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 167
    .local v0, tachoLimit:J
    const-string v2, "MoveForward"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 168
    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 3
    .parameter "power"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .prologue
    .line 153
    const-string v0, "MoveForwardIndefinitely"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 154
    return-void
.end method

.method public Stop()V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v1, "Stop"

    .line 234
    .local v1, functionName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 239
    .local v2, port:I
    const/4 v4, 0x2

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .parameter "stopBeforeDisconnect"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    .line 148
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the drive motors before disconnecting."
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 4
    .parameter "power"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward."
    .end annotation

    .prologue
    .line 193
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 194
    .local v2, numDriveMotors:I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, forwardMotorIndex:I
    add-int/lit8 v0, v2, -0x1

    .line 197
    .local v0, backwardMotorIndex:I
    const-string v3, "TurnClockwiseIndefinitely"

    invoke-direct {p0, v3, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    .line 199
    .end local v0           #backwardMotorIndex:I
    .end local v1           #forwardMotorIndex:I
    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 4
    .parameter "power"
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward."
    .end annotation

    .prologue
    .line 205
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 206
    .local v2, numDriveMotors:I
    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 207
    add-int/lit8 v1, v2, -0x1

    .line 208
    .local v1, forwardMotorIndex:I
    const/4 v0, 0x0

    .line 209
    .local v0, backwardMotorIndex:I
    const-string v3, "TurnCounterClockwiseIndefinitely"

    invoke-direct {p0, v3, p1, v1, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    .line 212
    .end local v0           #backwardMotorIndex:I
    .end local v1           #forwardMotorIndex:I
    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels used for driving."
        userVisible = false
    .end annotation

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    double-to-float v0, v0

    return v0
.end method

.method public WheelDiameter(F)V
    .locals 2
    .parameter "wheelDiameter"
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 126
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    .line 127
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 11
    .parameter "bluetoothConnection"

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    .local v2, port:I
    const-string v1, "Disconnect"

    const/4 v4, 0x2

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;IIIIIIJ)V

    goto :goto_0

    .line 76
    .end local v2           #port:I
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method
