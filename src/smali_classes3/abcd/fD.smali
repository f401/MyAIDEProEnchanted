.class public Labcd/fD;
.super Ljava/io/IOException;


# instance fields
.field private final j6:Labcd/yE;


# direct methods
.method public constructor <init>(Labcd/WD;I)V
    .registers 6

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->missingObject:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p1}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/fD;->j6:Labcd/yE;

    return-void
.end method

.method public constructor <init>(Labcd/yE;I)V
    .registers 3

    invoke-static {p2}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Labcd/yE;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->missingObject:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/fD;->j6:Labcd/yE;

    return-void
.end method


# virtual methods
.method public j6()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/fD;->j6:Labcd/yE;

    return-object v0
.end method
