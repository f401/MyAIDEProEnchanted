.class public Labcd/Fn;
.super Ljava/lang/Object;


# instance fields
.field public j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Labcd/Fn;->j6:I

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget v0, p0, Labcd/Fn;->j6:I

    invoke-static {v0}, Labcd/En;->j6(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()Z
    .registers 3

    iget v0, p0, Labcd/Fn;->j6:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
