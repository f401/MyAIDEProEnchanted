.class public La/j/f;
.super La/j/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/j/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;II)Z
    .registers 5

    if-ne p2, p3, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
