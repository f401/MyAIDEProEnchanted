.class public Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EnvListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/f401/aide/adapter/EnvListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field name:Landroid/widget/TextView;

.field value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v0, 0x7f08086f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f080870

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/f401/aide/adapter/EnvListAdapter$ViewHolder;->value:Landroid/widget/TextView;

    return-void
.end method
