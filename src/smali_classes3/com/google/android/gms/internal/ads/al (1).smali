.class public Lcom/google/android/gms/internal/ads/al;
.super Lcom/google/android/gms/internal/ads/cl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cl;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW(Landroid/content/Context;)V
    .registers 9

    invoke-static {}, Lcom/google/android/gms/internal/ads/Sl;->j6()Lcom/google/android/gms/internal/ads/Sl;

    move-result-object v0

    const-string v1, "Updating user agent."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Sl;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {p1}, Lcom/google/android/gms/common/f;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/common/util/d;->j6()Z

    move-result v3

    if-nez v3, :cond_21

    if-nez v2, :cond_3f

    :cond_21
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "admob_user_agent"

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "user_agent"

    invoke-interface {v4, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-nez v2, :cond_3c

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3f

    :cond_3c
    invoke-static {p1, v3, v5}, Lcom/google/android/gms/common/util/r;->j6(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Sl;->DW:Ljava/lang/String;

    :cond_41
    const-string p1, "User agent is updated."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 8

    if-eqz p3, :cond_54

    const/4 p3, 0x0

    cmpg-float p3, p4, p3

    if-lez p3, :cond_54

    const/high16 p3, 0x41c80000  # 25.0f

    cmpl-float p3, p4, p3

    if-lez p3, :cond_e

    goto :goto_54

    :cond_e
    :try_start_e
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v2

    invoke-static {v1, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p3

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v2, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v2, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {p3, p4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_48} :catch_49

    return-object p3

    :catch_49
    move-exception p3

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3

    :cond_54
    :goto_54
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public final j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/Sl;->j6()Lcom/google/android/gms/internal/ads/Sl;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Sl;->DW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/google/android/gms/common/util/d;->j6()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lcom/google/android/gms/internal/ads/Tl;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/Tl;-><init>(Lcom/google/android/gms/internal/ads/Sl;Landroid/content/Context;)V

    goto :goto_21

    :cond_18
    new-instance v1, Lcom/google/android/gms/internal/ads/Ul;

    invoke-static {p1}, Lcom/google/android/gms/common/f;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/ads/Ul;-><init>(Lcom/google/android/gms/internal/ads/Sl;Landroid/content/Context;Landroid/content/Context;)V

    :goto_21
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/Ql;->j6(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/Sl;->DW:Ljava/lang/String;

    :cond_29
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/Sl;->DW:Ljava/lang/String;

    return-object p1
.end method

.method public final j6(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cl;->j6(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 p1, 0x1

    return p1
.end method
