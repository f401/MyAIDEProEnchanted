.class Labcd/yF$a;
.super Labcd/wF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final gn:I


# direct methods
.method protected constructor <init>(Labcd/UE;I)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/wF;-><init>(Labcd/UE;)V

    iput p2, p0, Labcd/yF$a;->gn:I

    return-void
.end method


# virtual methods
.method public FH()Labcd/yE;
    .registers 3

    iget-object v0, p0, Labcd/wF;->VH:[Labcd/mG;

    iget v1, p0, Labcd/yF$a;->gn:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected Hw()Z
    .registers 3

    iget v0, p0, Labcd/yF$a;->gn:I

    iget-object v1, p0, Labcd/wF;->VH:[Labcd/mG;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
