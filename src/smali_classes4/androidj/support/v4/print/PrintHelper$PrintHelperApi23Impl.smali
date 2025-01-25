.class final Landroidj/support/v4/print/PrintHelper$PrintHelperApi23Impl;
.super Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintHelperApi23Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidj/support/v4/print/PrintHelper$PrintHelperImpl",
        "<",
        "Landroidj/support/v4/print/PrintHelperApi23;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroidj/support/v4/print/PrintHelperApi23;

    invoke-direct {v0, p1}, Landroidj/support/v4/print/PrintHelperApi23;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;-><init>(Landroidj/support/v4/print/PrintHelperKitkat;)V

    return-void
.end method
