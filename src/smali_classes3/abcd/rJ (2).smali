.class Labcd/rJ;
.super Labcd/DJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:[Ljava/lang/String;

.field private final FH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Labcd/DJ;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ssh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssh+git"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "git+ssh"

    aput-object v2, v0, v1

    iput-object v0, p0, Labcd/rJ;->DW:[Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/rJ;->FH:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    .registers 4

    new-instance p3, Labcd/tJ;

    invoke-direct {p3, p2, p1}, Labcd/tJ;-><init>(Labcd/UE;Labcd/HJ;)V

    return-object p3
.end method

.method public DW()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->transportProtoSSH:Ljava/lang/String;

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

.method public j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1}, Labcd/HJ;->VH()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-virtual {p1}, Labcd/HJ;->j6()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_28

    invoke-virtual {p1}, Labcd/HJ;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1

    :cond_2a
    invoke-super {p0, p1, p2, p3}, Labcd/DJ;->j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Labcd/rJ;->FH:Ljava/util/Set;

    return-object v0
.end method
