.class final Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/MemberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Executable"
.end annotation


# instance fields
.field private final isVarArgs:Z

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    .line 307
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs:Z

    .line 308
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    .line 302
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs:Z

    .line 303
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 2

    .line 288
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 2

    .line 288
    invoke-static {p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    move-result-object v0

    return-object v0
.end method

.method private static of(Ljava/lang/reflect/Constructor;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;"
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method private static of(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;
    .registers 2

    .line 293
    new-instance v0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public getParameterTypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public isVarArgs()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Lorg/apache/commons/lang3/reflect/MemberUtils$Executable;->isVarArgs:Z

    return v0
.end method
