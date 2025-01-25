.class public La/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, La/b/a;->a:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x4at
        0x4dt
        0x1t
        0x0t
    .end array-data
.end method
