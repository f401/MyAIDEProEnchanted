.class public Labcd/UC;
.super Ljava/io/IOException;


# instance fields
.field private final DW:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/WD;


# direct methods
.method public constructor <init>(Labcd/WD;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WD;",
            "Ljava/util/Collection",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->ambiguousObjectAbbreviation:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Labcd/UC;->j6:Labcd/WD;

    iput-object p2, p0, Labcd/UC;->DW:Ljava/util/Collection;

    return-void
.end method
