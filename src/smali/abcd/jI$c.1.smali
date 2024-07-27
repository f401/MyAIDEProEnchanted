.class public Labcd/jI$c;
.super Labcd/jI$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->credentialPassword:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Labcd/jI$a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/jI$a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
