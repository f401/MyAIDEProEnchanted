.class Landroidj/support/v4/widget/TextViewCompat$Api23TextViewCompatImpl;
.super Landroidj/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23TextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setTextAppearance(Landroid/widget/TextView;I)V
    .registers 3
    .param p1  # Landroid/widget/TextView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidj/support/annotation/StyleRes;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidj/support/v4/widget/TextViewCompatApi23;->setTextAppearance(Landroid/widget/TextView;I)V

    return-void
.end method
