.class public Labcd/tJ;
.super Labcd/dJ;

# interfaces
.implements Labcd/BI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/tJ$a;,
        Labcd/tJ$b;,
        Labcd/tJ$c;
    }
.end annotation


# static fields
.field static final a8:Labcd/DJ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/rJ;

    invoke-direct {v0}, Labcd/rJ;-><init>()V

    sput-object v0, Labcd/tJ;->a8:Labcd/DJ;

    return-void
.end method

.method constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/dJ;-><init>(Labcd/UE;Labcd/HJ;)V

    invoke-static {}, Labcd/tJ;->j3()Z

    move-result p1

    if-eqz p1, :cond_11

    new-instance p1, Labcd/sJ;

    invoke-direct {p1, p0}, Labcd/sJ;-><init>(Labcd/tJ;)V

    invoke-virtual {p0, p1}, Labcd/dJ;->j6(Labcd/cJ;)V

    :cond_11
    return-void
.end method

.method private static j3()Z
    .registers 2

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "GIT_SSH"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Labcd/GK;->DW:Labcd/GK$a;

    invoke-virtual {p1, v0}, Labcd/GK$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public QX()Labcd/nI;
    .registers 2

    new-instance v0, Labcd/tJ$b;

    invoke-direct {v0, p0}, Labcd/tJ$b;-><init>(Labcd/tJ;)V

    return-object v0
.end method

.method public XL()Labcd/LI;
    .registers 2

    new-instance v0, Labcd/tJ$c;

    invoke-direct {v0, p0}, Labcd/tJ$c;-><init>(Labcd/tJ;)V

    return-object v0
.end method

.method j6(Labcd/hD;Ljava/lang/String;)Labcd/hD;
    .registers 5

    if-eqz p2, :cond_61

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_61

    :cond_9
    iget-object p1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object p1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fatal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Labcd/GK;->DW:Labcd/GK$a;

    invoke-virtual {v1, p1}, Labcd/GK$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_5a
    new-instance p1, Labcd/hD;

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {p1, v0, p2}, Labcd/hD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-object p1
.end method

.method j6(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_2f

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_12

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    new-instance p3, Labcd/yD;

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotExecute:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Labcd/tJ;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_2f
    return-void
.end method
