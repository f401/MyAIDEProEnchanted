.class public Labcd/zG;
.super Labcd/yG;


# instance fields
.field private Zo:I

.field private final v5:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Labcd/yG;-><init>()V

    iput p1, p0, Labcd/zG;->v5:I

    return-void
.end method

.method public static j6(I)Labcd/yG;
    .registers 3

    if-ltz p0, :cond_0

    new-instance v0, Labcd/zG;

    invoke-direct {v0, p0}, Labcd/zG;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->skipMustBeNonNegative:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Labcd/yG;
    .registers 3

    new-instance v0, Labcd/zG;

    iget v1, p0, Labcd/zG;->v5:I

    invoke-direct {v0, v1}, Labcd/zG;-><init>(I)V

    return-object v0
.end method

.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 6

    iget v0, p0, Labcd/zG;->v5:I

    iget v1, p0, Labcd/zG;->Zo:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/zG;->Zo:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
