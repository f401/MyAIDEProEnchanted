.class public abstract Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CommandArguments"
.end annotation


# static fields
.field private static final sEmptyBundle:Landroid/os/Bundle;


# instance fields
.field mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->sEmptyBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBundle(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;->mBundle:Landroid/os/Bundle;

    return-void
.end method
