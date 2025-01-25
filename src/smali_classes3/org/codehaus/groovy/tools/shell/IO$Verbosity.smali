.class public final Lorg/codehaus/groovy/tools/shell/IO$Verbosity;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/tools/shell/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verbosity"
.end annotation


# static fields
.field public static final DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

.field public static final FH:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

.field public static final Hw:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

.field public static final j6:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;


# instance fields
.field public final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    const-string v1, "QUIET"

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->j6:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    new-instance v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    const-string v1, "INFO"

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    new-instance v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->FH:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    new-instance v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->Hw:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    return-void
.end method

.method public static j6(Ljava/lang/String;)Lorg/codehaus/groovy/tools/shell/IO$Verbosity;
    .registers 3

    sget-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->j6:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v1, v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->DW:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v1, v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    sget-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->FH:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v1, v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    :cond_21
    sget-object v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->Hw:Lorg/codehaus/groovy/tools/shell/IO$Verbosity;

    iget-object v1, v0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid verbosity name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/tools/shell/IO$Verbosity;->v5:Ljava/lang/String;

    return-object v0
.end method
