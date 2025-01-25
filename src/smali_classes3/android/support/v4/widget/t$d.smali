.class Landroid/support/v4/widget/t$d;
.super Landroid/support/v4/widget/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/t$c;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/widget/TextView;I)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
