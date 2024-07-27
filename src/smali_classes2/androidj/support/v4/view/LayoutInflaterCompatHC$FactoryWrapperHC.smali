.class Landroidj/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
.super Landroidj/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/LayoutInflaterCompatHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FactoryWrapperHC"
.end annotation


# direct methods
.method constructor <init>(Landroidj/support/v4/view/LayoutInflaterFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidj/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroidj/support/v4/view/LayoutInflaterFactory;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;->mDelegateFactory:Landroidj/support/v4/view/LayoutInflaterFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidj/support/v4/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
