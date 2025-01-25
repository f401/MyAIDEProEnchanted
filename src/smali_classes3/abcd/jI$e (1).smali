.class public Labcd/jI$e;
.super Labcd/jI$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->credentialUsername:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Labcd/jI$d;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
