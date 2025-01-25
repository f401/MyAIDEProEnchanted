.class Labcd/RK$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field DW:I

.field final j6:[B


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/RK$a;->j6:[B

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/RK$a;->j6:[B

    return-void
.end method


# virtual methods
.method j6()Z
    .registers 3

    iget v0, p0, Labcd/RK$a;->DW:I

    iget-object v1, p0, Labcd/RK$a;->j6:[B

    array-length v1, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
