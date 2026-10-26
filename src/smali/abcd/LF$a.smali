.class Labcd/LF$a;
.super Labcd/LF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/LF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/LF;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/LF$a;)V
    .locals 0

    invoke-direct {p0}, Labcd/LF$a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Labcd/dG;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Labcd/dG;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method j6(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
