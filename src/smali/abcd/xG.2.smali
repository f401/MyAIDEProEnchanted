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
    .registers 3

    if-ltz p0, :cond_0

    new-instance v0, Labcd/xG;

    invoke-direct {v0, p0}, Labcd/xG;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->maxCountMustBeNonNegative:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 5

    iget v0, p0, Labcd/xG;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/xG;->Zo:I

    iget v0, p0, Labcd/xG;->Zo:I

    iget v1, p0, Labcd/xG;->v5:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Labcd/sD;->j6:Labcd/sD;

    throw v0
.end method
