.class Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV21;
.super Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/LayoutInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutInflaterCompatImplV21"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplV11;-><init>()V

    return-void
.end method


# virtual methods
.method public setFactory(Landroid/view/LayoutInflater;Landroidj/support/v4/view/LayoutInflaterFactory;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/LayoutInflaterCompatLollipop;->setFactory(Landroid/view/LayoutInflater;Landroidj/support/v4/view/LayoutInflaterFactory;)V

    return-void
.end method
