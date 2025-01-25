.class public Lorg/apache/tools/ant/taskdefs/Input$HandlerType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerType"
.end annotation


# static fields
.field private static final HANDLERS:[Lorg/apache/tools/ant/input/InputHandler;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v2

    const-string v1, "propertyfile"

    aput-object v1, v0, v3

    const-string v1, "greedy"

    aput-object v1, v0, v4

    const-string v1, "secure"

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->VALUES:[Ljava/lang/String;

    .line 130
    new-array v0, v6, [Lorg/apache/tools/ant/input/InputHandler;

    new-instance v1, Lorg/apache/tools/ant/input/DefaultInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/tools/ant/input/PropertyFileInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/PropertyFileInputHandler;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/tools/ant/input/GreedyInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/GreedyInputHandler;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lorg/apache/tools/ant/input/SecureInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/SecureInputHandler;-><init>()V

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->HANDLERS:[Lorg/apache/tools/ant/input/InputHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Input$HandlerType;)Lorg/apache/tools/ant/input/InputHandler;
    .registers 2

    .line 127
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v0

    return-object v0
.end method

.method private getInputHandler()Lorg/apache/tools/ant/input/InputHandler;
    .registers 3

    .line 142
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->HANDLERS:[Lorg/apache/tools/ant/input/InputHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .registers 2

    .line 138
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
