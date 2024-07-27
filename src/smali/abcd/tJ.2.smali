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
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/dJ;-><init>(Labcd/UE;Labcd/HJ;)V

    invoke-static {}, Labcd/tJ;->j3()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/sJ;

    invoke-direct {v0, p0}, Labcd/sJ;-><init>(Labcd/tJ;)V

    invoke-virtual {p0, v0}, Labcd/dJ;->j6(Labcd/cJ;)V

    :cond_0
    return-void
.end method

.method private static j3()Z
    .registers 2

    invoke-static {}, Labcd/QK;->FH()Labcd/QK;

    move-result-object v0

    const-string v1, "GIT_SSH"

    invoke-virtual {v0, v1}, Labcd/QK;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Labcd/GK;->DW:Labcd/GK$a;

    invoke-virtual {v2, v0}, Labcd/GK$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .registers 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fatal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Labcd/GK;->DW:Labcd/GK$a;

    invoke-virtual {v2, v0}, Labcd/GK$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance p1, Labcd/hD;

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-direct {p1, v0, p2}, Labcd/hD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    goto :goto_0
.end method

.method j6(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotExecute:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, p2}, Labcd/tJ;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-void
.end method
