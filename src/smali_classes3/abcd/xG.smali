.class public Labcd/xG;
.super Labcd/yG;


# instance fields
.field private Zo:I

.field private v5:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Labcd/yG;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/xG;->Zo:I

    iput p1, p0, Labcd/xG;->v5:I

    return-void
.end method

.method public static j6(I)Labcd/yG;
    .registers 2

    if-ltz p0, :cond_8

    new-instance v0, Labcd/xG;

    invoke-direct {v0, p0}, Labcd/xG;-><init>(I)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->maxCountMustBeNonNegative:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Labcd/yG;
    .registers 3

    new-instance v0, Labcd/xG;

    iget v1, p0, Labcd/xG;->v5:I

    invoke-direct {v0, v1}, Labcd/xG;-><init>(I)V

    return-object v0
.end method

.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 4

    iget p1, p0, Labcd/xG;->Zo:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Labcd/xG;->Zo:I

    iget v0, p0, Labcd/xG;->v5:I

    if-gt p1, v0, :cond_b

    return p2

    :cond_b
    sget-object p1, Labcd/sD;->j6:Labcd/sD;

    throw p1
.end method
