.class Landroidj/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/LayoutInflaterCompatBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FactoryWrapper"
.end annotation


# instance fields
.field final mDelegateFactory:Landroidj/support/v4/view/LayoutInflaterFactory;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/LayoutInflaterFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;->mDelegateFactory:Landroidj/support/v4/view/LayoutInflaterFactory;

    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;->mDelegateFactory:Landroidj/support/v4/view/LayoutInflaterFactory;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Landroidj/support/v4/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;->mDelegateFactory:Landroidj/support/v4/view/LayoutInflaterFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
