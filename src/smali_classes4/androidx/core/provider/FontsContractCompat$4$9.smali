.class Landroidx/core/provider/FontsContractCompat$4$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/core/provider/FontsContractCompat$4;

.field final val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/core/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V
    .registers 3

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$4$9;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$4$9;->val$typeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4$9;->this$0:Landroidx/core/provider/FontsContractCompat$4;

    iget-object v0, v0, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroidx/core/provider/FontsContractCompat$4$9;->val$typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
