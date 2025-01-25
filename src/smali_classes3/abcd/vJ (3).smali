.class Labcd/vJ;
.super Labcd/DJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/DJ;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    .registers 4

    new-instance p3, Labcd/xJ;

    invoke-direct {p3, p2, p1}, Labcd/xJ;-><init>(Labcd/UE;Labcd/HJ;)V

    return-object p3
.end method

.method public DW()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->transportProtoFTP:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Labcd/DJ$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Labcd/DJ$a;->j6:Labcd/DJ$a;

    sget-object v1, Labcd/DJ$a;->DW:Labcd/DJ$a;

    sget-object v2, Labcd/DJ$a;->Hw:Labcd/DJ$a;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Labcd/DJ$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Labcd/DJ$a;->FH:Labcd/DJ$a;

    sget-object v1, Labcd/DJ$a;->v5:Labcd/DJ$a;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ftp"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
