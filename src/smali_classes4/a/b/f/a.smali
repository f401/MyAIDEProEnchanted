.class public La/b/f/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_e

    :pswitch_5  #0x3
    const/4 v0, 0x1

    :goto_6
    return v0

    :pswitch_7  #0x2
    const/4 v0, 0x0

    goto :goto_6

    :pswitch_9  #0x4
    const/4 v0, 0x2

    goto :goto_6

    :pswitch_b  #0x1
    const/4 v0, 0x3

    goto :goto_6

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b  #00000001
        :pswitch_7  #00000002
        :pswitch_5  #00000003
        :pswitch_9  #00000004
    .end packed-switch
.end method

.method public static a(II)I
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    and-int/lit8 p0, p0, -0x11

    :cond_5
    and-int/lit8 v0, p0, -0x8

    and-int/lit8 v1, p1, 0x7

    or-int/2addr v0, v1

    return v0
.end method

.method public static b(I)I
    .registers 2

    packed-switch p0, :pswitch_data_c

    :pswitch_3  #0x1
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5  #0x0
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_7  #0x2
    const/4 v0, 0x4

    goto :goto_4

    :pswitch_9  #0x3
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_3  #00000001
        :pswitch_7  #00000002
        :pswitch_9  #00000003
    .end packed-switch
.end method
