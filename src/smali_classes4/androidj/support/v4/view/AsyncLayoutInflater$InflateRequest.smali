.class Landroidj/support/v4/view/AsyncLayoutInflater$InflateRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateRequest"
.end annotation


# instance fields
.field callback:Landroidj/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

.field inflater:Landroidj/support/v4/view/AsyncLayoutInflater;

.field parent:Landroid/view/ViewGroup;

.field resid:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
