.class final Landroidx/core/provider/FontsContractCompat$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/FontsContractCompat;->requestFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$appContext:Landroid/content/Context;

.field final val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

.field final val$callerThreadHandler:Landroid/os/Handler;

.field final val$request:Landroidx/core/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V
    .registers 5

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$4;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    iput-object p3, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callback:Landroidx/core/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$appContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/core/provider/FontsContractCompat$4;->val$request:Landroidx/core/provider/FontRequest;

    invoke-static {v0, v1, v2}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_98

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$4;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$4;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$3;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$3;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_30
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$2;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$2;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_3b
    invoke-virtual {v0}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    if-eqz v1, :cond_44

    array-length v0, v1

    if-nez v0, :cond_4f

    :cond_44
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$5;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$5;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_4f
    array-length v2, v1

    const/4 v0, 0x0

    :goto_51
    if-ge v0, v2, :cond_7a

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v0

    if-gez v0, :cond_6c

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$6;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$6;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_6c
    iget-object v1, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/FontsContractCompat$4$7;

    invoke-direct {v2, p0, v0}, Landroidx/core/provider/FontsContractCompat$4$7;-><init>(Landroidx/core/provider/FontsContractCompat$4;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_7a
    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v5, v1}, Landroidx/core/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$8;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$8;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :cond_8d
    iget-object v1, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroidx/core/provider/FontsContractCompat$4$9;

    invoke-direct {v2, p0, v0}, Landroidx/core/provider/FontsContractCompat$4$9;-><init>(Landroidx/core/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    :catch_98
    move-exception v0

    iget-object v0, p0, Landroidx/core/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/core/provider/FontsContractCompat$4$1;

    invoke-direct {v1, p0}, Landroidx/core/provider/FontsContractCompat$4$1;-><init>(Landroidx/core/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_24
.end method
