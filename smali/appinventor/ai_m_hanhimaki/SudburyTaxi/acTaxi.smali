.class public Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
.super Lcom/google/appinventor/components/runtime/Form;
.source "acTaxi.yail"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/math/IntNum;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/math/IntNum;

.field static final Lit15:Lgnu/lists/FString;

.field static final Lit16:Lgnu/lists/FString;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/lists/FString;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/lists/FString;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/math/IntNum;

.field static final Lit23:Lgnu/lists/FString;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/lists/FString;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/lists/FString;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit32:Lgnu/mapping/SimpleSymbol;

.field static final Lit33:Lgnu/mapping/SimpleSymbol;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/mapping/SimpleSymbol;

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit38:Lgnu/mapping/SimpleSymbol;

.field static final Lit39:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/math/IntNum;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/lists/FString;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static acTaxi:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn4:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn5:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn8:Lgnu/expr/ModuleMethod;


# instance fields
.field public $Stdebug$Mnform$St:Ljava/lang/Boolean;

.field public final $define:Lgnu/expr/ModuleMethod;

.field public Button1:Lcom/google/appinventor/components/runtime/Button;

.field public final Button1$Click:Lgnu/expr/ModuleMethod;

.field public Image1:Lcom/google/appinventor/components/runtime/Image;

.field public Label1:Lcom/google/appinventor/components/runtime/Label;

.field public PhoneCall1:Lcom/google/appinventor/components/runtime/PhoneCall;

.field public final add$Mnto$Mncomponents:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnevents:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnform$Mndo$Mnafter$Mncreation:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnglobal$Mnvar$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final add$Mnto$Mnglobal$Mnvars:Lgnu/expr/ModuleMethod;

.field public final android$Mnlog$Mnform:Lgnu/expr/ModuleMethod;

.field public components$Mnto$Mncreate:Lgnu/lists/LList;

.field public final dispatchEvent:Lgnu/expr/ModuleMethod;

.field public events$Mnto$Mnregister:Lgnu/lists/LList;

.field public form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

.field public form$Mnenvironment:Lgnu/mapping/Environment;

.field public form$Mnname$Mnsymbol:Lgnu/mapping/Symbol;

.field public global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

.field public global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

.field public final is$Mnbound$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final lookup$Mnhandler:Lgnu/expr/ModuleMethod;

.field public final lookup$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public final process$Mnexception:Lgnu/expr/ModuleMethod;

.field public final send$Mnerror:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lookup-handler"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "dispatchEvent"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "send-error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-form-do-after-creation"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-global-vars"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit38:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-components"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-events"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-global-var-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "is-bound-in-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "lookup-in-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-to-form-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "android-log-form"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.PhoneCall"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit30:Lgnu/lists/FString;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.PhoneCall"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit29:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Click"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Button1$Click"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "MakePhoneCall"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "PhoneNumber"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "PhoneCall1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Button"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit23:Lgnu/lists/FString;

    const/4 v0, -0x2

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit22:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Button1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Button"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit20:Lgnu/lists/FString;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Label"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit19:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Text"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Label1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Label"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit16:Lgnu/lists/FString;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Image"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit15:Lgnu/lists/FString;

    const/16 v0, 0x96

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit14:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Height"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v0, 0x13b

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit12:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Width"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Picture"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Image1"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/lists/FString;

    const-string v1, "com.google.appinventor.components.runtime.Image"

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit8:Lgnu/lists/FString;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "text"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "Title"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "number"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x100

    aput v2, v0, v1

    invoke-static {v0}, Lgnu/math/IntNum;->make([I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit4:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "BackgroundColor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*the-null-value*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "getMessage"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "acTaxi"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v9, 0x4004

    const/16 v8, 0x2002

    const/16 v7, 0x1001

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    new-instance v0, Lgnu/expr/ModuleMethod;

    new-instance v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi$frame;

    invoke-direct {v1}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi$frame;-><init>()V

    iput-object p0, v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi$frame;->$main:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;

    const/4 v2, 0x1

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->android$Mnlog$Mnform:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit32:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->add$Mnto$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit33:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookup$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit34:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->is$Mnbound$Mnin$Mnform$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit35:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->add$Mnto$Mnglobal$Mnvar$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit36:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->add$Mnto$Mnevents:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit37:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->add$Mnto$Mncomponents:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit38:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->add$Mnto$Mnglobal$Mnvars:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit39:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->add$Mnto$Mnform$Mndo$Mnafter$Mncreation:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit40:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->send$Mnerror:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    const-string v3, "process-exception"

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->process$Mnexception:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit41:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->dispatchEvent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit42:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookup$Mnhandler:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "/tmp/runtime4500617438726876708.scm:541"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    const-string v3, "$define"

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->$define:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Button1$Click:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method public static lambda1symbolAppend$V([Ljava/lang/Object;)Lgnu/mapping/SimpleSymbol;
    .locals 9
    .parameter "argsArray"

    .prologue
    const/4 v8, 0x1

    .line 10210
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v3

    .line 10211
    .local v3, symbols:Lgnu/lists/LList;
    sget-object v5, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 10212
    sget-object v6, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    .line 10213
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v3

    :goto_0
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v4, :cond_0

    invoke-static {v2}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v4}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v4

    return-object v4

    :cond_0
    :try_start_1
    check-cast v0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    :try_start_2
    check-cast v4, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {v4}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .local v1, arg0:Ljava/lang/Object;
    .local v2, result:Lgnu/lists/Pair;
    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #arg0:Ljava/lang/Object;
    .end local v2           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "arg0"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .local v0, arg0:Lgnu/lists/Pair;
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "symbol->string"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 10212
    .end local v0           #arg0:Lgnu/lists/Pair;
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string->symbol"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method static lambda2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10243
    const/4 v0, 0x0

    return-object v0
.end method

.method static lambda3()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 10
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit4:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v2, "ACTaxi"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda4()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v2, "15537528ac_f.jpg"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit12:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit14:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda5()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v2, "15537528ac_f.jpg"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit12:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit13:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit14:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda6()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 28
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v2, "Text for Label1"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda7()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 28
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v2, "Text for Label1"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda8()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v2, "Call AC Taxi"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit22:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static lambda9()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v2, "Call AC Taxi"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit22:Lgnu/math/IntNum;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public $define()V
    .locals 26

    .prologue
    .line 10147
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 10227
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10230
    :goto_0
    sput-object p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->acTaxi:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;

    sget-object v21, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 10235
    move-object/from16 v0, p0

    iget-object v14, v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->events$Mnto$Mnregister:Lgnu/lists/LList;

    .line 10151
    .local v14, events:Lgnu/lists/LList;
    move-object v5, v14

    :goto_1
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_0

    .line 10238
    :try_start_1
    sget-object v21, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v22, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10249
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v20

    .line 10162
    .local v20, var$Mnval$Mnpairs:Lgnu/lists/LList;
    move-object/from16 v6, p0

    .line 10168
    .local v6, closureEnv:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
    move-object/from16 v5, v20

    :goto_2
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_3

    .line 10250
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    :goto_3
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_4

    .line 10251
    move-object/from16 v0, p0

    iget-object v0, v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->components$Mnto$Mncreate:Lgnu/lists/LList;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lkawa/lib/lists;->reverse(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v8

    .line 10171
    .local v8, component$Mndescriptors:Lgnu/lists/LList;
    move-object/from16 v6, p0

    .line 10172
    move-object v5, v8

    :goto_4
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_5

    .line 10200
    move-object v5, v8

    :goto_5
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_6

    .line 10207
    move-object v5, v8

    :goto_6
    sget-object v21, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;
    :try_end_1
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, v21

    if-ne v5, v0, :cond_8

    .line 10254
    .end local v6           #closureEnv:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
    .end local v8           #component$Mndescriptors:Lgnu/lists/LList;
    .end local v20           #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :goto_7
    return-void

    .line 10227
    .end local v14           #events:Lgnu/lists/LList;
    :catch_0
    move-exception v15

    .line 10229
    .local v15, exception:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->androidLogForm(Ljava/lang/Object;)V

    .line 10230
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->processException(Ljava/lang/Object;)V

    goto :goto_0

    .line 10151
    .end local v15           #exception:Ljava/lang/Exception;
    .restart local v14       #events:Lgnu/lists/LList;
    :cond_0
    :try_start_2
    check-cast v5, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_a

    .local v5, arg0:Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 10155
    .local v13, event$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 10157
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    if-nez v21, :cond_1

    const/16 v21, 0x0

    :goto_8
    sget-object v22, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10158
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-nez v22, :cond_2

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_1

    .line 10157
    .local v5, arg0:Lgnu/lists/Pair;
    :cond_1
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_8

    .line 10158
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    goto :goto_9

    .line 10168
    .end local v5           #arg0:Lgnu/lists/Pair;
    .end local v13           #event$Mninfo:Ljava/lang/Object;
    .restart local v6       #closureEnv:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
    .restart local v20       #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :cond_3
    :try_start_3
    check-cast v5, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_3 .. :try_end_3} :catch_2

    .line 10249
    .restart local v5       #arg0:Lgnu/lists/Pair;
    :try_start_4
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v19

    .line 10165
    .local v19, var$Mnval:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 10166
    sget-object v21, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v17

    .line 10167
    .local v17, val$Mnthunk:Ljava/lang/Object;
    .local v18, var:Ljava/lang/Object;
    :try_start_5
    check-cast v18, Lgnu/mapping/Symbol;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_5 .. :try_end_5} :catch_2

    .end local v18           #var:Ljava/lang/Object;
    :try_start_6
    sget-object v21, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_2

    .line 10249
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v17           #val$Mnthunk:Ljava/lang/Object;
    .end local v19           #var$Mnval:Ljava/lang/Object;
    :catch_1
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_6
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_6 .. :try_end_6} :catch_2

    .line 10206
    .end local v6           #closureEnv:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
    .end local v20           #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :catch_2
    move-exception v15

    .line 10254
    .local v15, exception:Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->processException(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 10167
    .end local v15           #exception:Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
    .local v5, arg0:Lgnu/lists/Pair;
    .restart local v6       #closureEnv:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
    .restart local v17       #val$Mnthunk:Ljava/lang/Object;
    .restart local v18       #var:Ljava/lang/Object;
    .restart local v19       #var$Mnval:Ljava/lang/Object;
    .restart local v20       #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :catch_3
    move-exception v21

    :try_start_7
    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "add-to-global-var-environment"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_7
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_7 .. :try_end_7} :catch_2

    .line 10250
    .end local v5           #arg0:Lgnu/lists/Pair;
    .end local v17           #val$Mnthunk:Ljava/lang/Object;
    .end local v18           #var:Ljava/lang/Object;
    .end local v19           #var$Mnval:Ljava/lang/Object;
    :cond_4
    :try_start_8
    check-cast v5, Lgnu/lists/Pair;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_8 .. :try_end_8} :catch_2

    .line 10238
    .restart local v5       #arg0:Lgnu/lists/Pair;
    :try_start_9
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_3

    .end local v5           #arg0:Ljava/lang/Object;
    :catch_4
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_9
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_9 .. :try_end_9} :catch_2

    .line 10172
    .restart local v8       #component$Mndescriptors:Lgnu/lists/LList;
    :cond_5
    :try_start_a
    check-cast v5, Lgnu/lists/Pair;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_a .. :try_end_a} :catch_2

    .local v5, arg0:Lgnu/lists/Pair;
    :try_start_b
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 10173
    .local v9, component$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 10174
    sget-object v21, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10175
    sget-object v21, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 10176
    sget-object v21, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v21

    :try_start_c
    check-cast v21, Lgnu/mapping/Symbol;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_c .. :try_end_c} :catch_2

    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v7

    .line 10180
    .local v7, component$Mncontainer:Ljava/lang/Object;
    .local v10, component$Mnname:Ljava/lang/Object;
    .local v12, component$Mntype:Ljava/lang/Object;
    sget-object v21, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 10182
    .local v11, component$Mnobject:Ljava/lang/Object;
    sget-object v21, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_d .. :try_end_d} :catch_2

    .line 10185
    :try_start_e
    check-cast v10, Lgnu/mapping/Symbol;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_e .. :try_end_e} :catch_2

    .end local v10           #component$Mnname:Ljava/lang/Object;
    :try_start_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_4

    .line 10172
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v7           #component$Mncontainer:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v11           #component$Mnobject:Ljava/lang/Object;
    .end local v12           #component$Mntype:Ljava/lang/Object;
    :catch_5
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22

    .line 10176
    .local v5, arg0:Lgnu/lists/Pair;
    .restart local v9       #component$Mninfo:Ljava/lang/Object;
    :catch_6
    move-exception v22

    new-instance v23, Lgnu/mapping/WrongType;

    const-string v24, "lookup-in-form-environment"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v23

    .line 10185
    .restart local v7       #component$Mncontainer:Ljava/lang/Object;
    .restart local v10       #component$Mnname:Ljava/lang/Object;
    .restart local v11       #component$Mnobject:Ljava/lang/Object;
    .restart local v12       #component$Mntype:Ljava/lang/Object;
    :catch_7
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "add-to-form-environment"

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_f
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_f .. :try_end_f} :catch_2

    .line 10200
    .end local v5           #arg0:Lgnu/lists/Pair;
    .end local v7           #component$Mncontainer:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v10           #component$Mnname:Ljava/lang/Object;
    .end local v11           #component$Mnobject:Ljava/lang/Object;
    .end local v12           #component$Mntype:Ljava/lang/Object;
    :cond_6
    :try_start_10
    check-cast v5, Lgnu/lists/Pair;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_10 .. :try_end_10} :catch_2

    .line 10172
    .restart local v5       #arg0:Lgnu/lists/Pair;
    :try_start_11
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 10196
    .restart local v9       #component$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10197
    sget-object v21, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 10199
    .local v16, init$Mnthunk:Ljava/lang/Object;
    sget-object v21, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_7

    sget-object v21, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_5

    .line 10172
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v16           #init$Mnthunk:Ljava/lang/Object;
    :catch_8
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_11
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_11 .. :try_end_11} :catch_2

    .line 10207
    :cond_8
    :try_start_12
    check-cast v5, Lgnu/lists/Pair;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_12 .. :try_end_12} :catch_2

    .line 10172
    .local v5, arg0:Lgnu/lists/Pair;
    :try_start_13
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    .line 10203
    .restart local v9       #component$Mninfo:Ljava/lang/Object;
    sget-object v21, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 10204
    sget-object v21, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10206
    .restart local v10       #component$Mnname:Ljava/lang/Object;
    sget-object v21, Lgnu/kawa/reflect/SlotGet;->field:Lgnu/kawa/reflect/SlotGet;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->callInitialize(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .local v5, arg0:Ljava/lang/Object;
    goto/16 :goto_6

    .line 10172
    .end local v5           #arg0:Ljava/lang/Object;
    .end local v9           #component$Mninfo:Ljava/lang/Object;
    .end local v10           #component$Mnname:Ljava/lang/Object;
    :catch_9
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
    :try_end_13
    .catch Lcom/google/appinventor/components/runtime/errors/YailRuntimeError; {:try_start_13 .. :try_end_13} :catch_2

    .line 10151
    .end local v6           #closureEnv:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;
    .end local v8           #component$Mndescriptors:Lgnu/lists/LList;
    .end local v20           #var$Mnval$Mnpairs:Lgnu/lists/LList;
    :catch_a
    move-exception v21

    new-instance v22, Lgnu/mapping/WrongType;

    const-string v23, "arg0"

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v22
.end method

.method public Button1$Click()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/google/youngandroid/runtime;->setThisForm()V

    .line 42
    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit25:Lgnu/mapping/SimpleSymbol;

    const-string v2, "7056885958"

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit26:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v1, v2, v3}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "container$Mnname"
    .parameter "component$Mntype"
    .parameter "component$Mnname"
    .parameter "init$Mnthunk"

    .prologue
    .line 10057
    invoke-static {p1, p2, p3, p4}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->components$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->components$Mnto$Mncreate:Lgnu/lists/LList;

    return-void
.end method

.method public addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "component$Mnname"
    .parameter "event$Mnname"

    .prologue
    .line 10050
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->events$Mnto$Mnregister:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->events$Mnto$Mnregister:Lgnu/lists/LList;

    return-void
.end method

.method public addToFormDoAfterCreation(Ljava/lang/Object;)V
    .locals 1
    .parameter "thunk"

    .prologue
    .line 10076
    iget-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    invoke-static {p1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    return-void
.end method

.method public addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 10011
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding ~A to env ~A with value ~A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->androidLogForm(Ljava/lang/Object;)V

    .line 10013
    iget-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 10029
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding ~A to env ~A with value ~A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v3, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->androidLogForm(Ljava/lang/Object;)V

    .line 10031
    iget-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "var"
    .parameter "val$Mnthunk"

    .prologue
    .line 10066
    invoke-static {p1, p2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iget-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    iput-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    return-void
.end method

.method public androidLogForm(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 10002
    return-void
.end method

.method public dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 6
    .parameter "componentObject"
    .parameter "registeredComponentName"
    .parameter "eventName"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 10101
    invoke-static {p2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v2

    .line 10111
    .local v2, registeredObject:Lgnu/mapping/SimpleSymbol;
    invoke-virtual {p0, v2}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10112
    invoke-virtual {p0, v2}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 10113
    invoke-virtual {p0, p2, p3}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10120
    .local v1, handler:Ljava/lang/Object;
    :try_start_0
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v5, 0x0

    invoke-static {p4, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .line 10133
    .end local v1           #handler:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 10120
    .restart local v1       #handler:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 10125
    .local v0, exception:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->androidLogForm(Ljava/lang/Object;)V

    .line 10128
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10129
    invoke-virtual {p0, v0}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->processException(Ljava/lang/Object;)V

    goto :goto_0

    .line 10133
    .end local v0           #exception:Ljava/lang/Throwable;
    .end local v1           #handler:Ljava/lang/Object;
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 10021
    iget-object v0, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0, p1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method public lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "componentName"
    .parameter "eventName"

    .prologue
    const/4 v0, 0x0

    .line 10139
    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "default$Mnvalue"

    .prologue
    .line 10015
    iget-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    .local v0, x:Z
    if-eqz v0, :cond_2

    iget-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10018
    :goto_1
    iget-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    invoke-virtual {v1, p1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object p2

    .line 10016
    .end local p2
    :cond_0
    return-object p2

    .line 10015
    .end local v0           #x:Z
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #x:Z
    :cond_2
    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public processException(Ljava/lang/Object;)V
    .locals 5
    .parameter "ex"

    .prologue
    .line 10084
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ReplApplication;->reportError(Ljava/lang/Throwable;)V

    .line 10093
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 10095
    sget-object v2, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    instance-of v2, p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    if-eqz v2, :cond_1

    .line 10096
    check-cast p1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    .end local p1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->getErrorType()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "End Application"

    invoke-static {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;->alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10095
    .restart local p1
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 10096
    :cond_1
    const-string v2, "Runtime Error"

    goto :goto_1

    .line 10087
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "com.google.appinventor.components.runtime.ReplApplication.reportError(java.lang.Throwable)"

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    iget-object v2, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    sget-object v0, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v0, v1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    :try_start_0
    invoke-virtual {p0, v1}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->run(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0, v2}, Lgnu/expr/ModuleBody;->runCleanup(Lgnu/mapping/CallContext;Ljava/lang/Throwable;Lgnu/lists/Consumer;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "$ctx"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 5
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .local v0, $result:Lgnu/lists/Consumer;
    const-string v1, "com.google.youngandroid.runtime"

    invoke-static {v1}, Lkawa/standard/require;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    check-cast v1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 10000
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->$Stdebug$Mnform$St:Ljava/lang/Boolean;

    .line 10002
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v1

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnenvironment:Lgnu/mapping/Environment;

    .line 10011
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v4}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "-global-vars"

    aput-object v3, v1, v5

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v1

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvar$Mnenvironment:Lgnu/mapping/Environment;

    .line 10029
    sput-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->acTaxi:Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mnname$Mnsymbol:Lgnu/mapping/Symbol;

    .line 10041
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->events$Mnto$Mnregister:Lgnu/lists/LList;

    .line 10046
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->components$Mnto$Mncreate:Lgnu/lists/LList;

    .line 10050
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->global$Mnvars$Mnto$Mncreate:Lgnu/lists/LList;

    .line 10066
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v1, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->form$Mndo$Mnafter$Mncreation:Lgnu/lists/LList;

    .line 10076
    const-string v1, "com.google.youngandroid.runtime"

    invoke-static {v1}, Lkawa/standard/require;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1
    check-cast v1, Ljava/lang/Runnable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_1

    .line 10
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit4:Lgnu/math/IntNum;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v3, v4, v5}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v4, "ACTaxi"

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-static {v1, v3, v4, v5}, Lcom/google/youngandroid/runtime;->setAndCoerceProperty$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 16
    :goto_1
    iput-object v2, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Image1:Lcom/google/appinventor/components/runtime/Image;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_2

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit8:Lgnu/lists/FString;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v3, v4, v5}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 27
    :goto_2
    iput-object v2, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Label1:Lcom/google/appinventor/components/runtime/Label;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_3

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit16:Lgnu/lists/FString;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v3, v4, v5}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 34
    :goto_3
    iput-object v2, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Button1:Lcom/google/appinventor/components/runtime/Button;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_4

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit20:Lgnu/lists/FString;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v3, v4, v5}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 41
    :goto_4
    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_5

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit27:Lgnu/mapping/SimpleSymbol;

    iget-object v3, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Button1$Click:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v3}, Lcom/google/youngandroid/runtime;->addToCurrentFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_6

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnform$St:Ljava/lang/Object;

    check-cast v1, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    const-string v3, "Button1"

    const-string v4, "Click"

    invoke-static {v1, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_6
    iput-object v2, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->PhoneCall1:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v1, Lcom/google/youngandroid/runtime;->$Stthis$Mnis$Mnthe$Mnrepl$St:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_7

    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit29:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2, v3, v4}, Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 48
    :goto_7
    invoke-static {}, Lcom/google/youngandroid/runtime;->initRuntime()V

    return-void

    .line 10011
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 11
    :cond_1
    new-instance v1, Lkawa/lang/Promise;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-direct {v1, v3}, Lkawa/lang/Promise;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {p0, v1}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 16
    :cond_2
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit15:Lgnu/lists/FString;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit9:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v3, v4, v5}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 27
    :cond_3
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit19:Lgnu/lists/FString;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v3, v4, v5}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 34
    :cond_4
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit23:Lgnu/lists/FString;

    sget-object v4, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v3, v4, v5}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 41
    :cond_5
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit27:Lgnu/mapping/SimpleSymbol;

    iget-object v3, p0, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Button1$Click:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, v1, v3}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p0, v1, v3}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 45
    :cond_7
    sget-object v1, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit30:Lgnu/lists/FString;

    sget-object v3, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2, v3, v4}, Lappinventor/ai_m_hanhimaki/SudburyTaxi/acTaxi;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 48
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "java.lang.Runnable.run()"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 6
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "java.lang.Runnable.run()"

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public sendError(Ljava/lang/Object;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 10081
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
