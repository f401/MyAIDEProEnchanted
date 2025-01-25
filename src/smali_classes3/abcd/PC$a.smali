.class public final Labcd/PC$a;
.super Labcd/PC$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/PC$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/QC;)V
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->noApplyInDelete:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
