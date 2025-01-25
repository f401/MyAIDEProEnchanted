.class Lcom/baidu/mobstat/da$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/baidu/mobstat/df;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/df;Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONObject;ZZZ)V
    .registers 11

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/da$a;->l:Ljava/lang/Runnable;

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/da$a;->h:Ljava/lang/ref/WeakReference;

    .line 150
    iput-object p6, p0, Lcom/baidu/mobstat/da$a;->g:Lorg/json/JSONObject;

    .line 151
    iput-object p3, p0, Lcom/baidu/mobstat/da$a;->d:Lcom/baidu/mobstat/df;

    .line 152
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/baidu/mobstat/da$a;->c:Ljava/lang/ref/WeakReference;

    .line 153
    iput-object p4, p0, Lcom/baidu/mobstat/da$a;->e:Landroid/os/Handler;

    .line 154
    iput-object p5, p0, Lcom/baidu/mobstat/da$a;->f:Landroid/os/Handler;

    .line 155
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/da$a;->b:Z

    .line 156
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/mobstat/da$a;->a:Z

    .line 157
    iput-boolean p7, p0, Lcom/baidu/mobstat/da$a;->i:Z

    .line 159
    iput-boolean p8, p0, Lcom/baidu/mobstat/da$a;->j:Z

    .line 161
    iput-boolean p9, p0, Lcom/baidu/mobstat/da$a;->k:Z

    .line 163
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 165
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    :cond_35
    invoke-virtual {p0}, Lcom/baidu/mobstat/da$a;->run()V

    return-void
.end method

.method private a(Lcom/baidu/mobstat/df;Landroid/os/Handler;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_6

    return-void

    .line 326
    :cond_6
    new-instance v0, Lcom/baidu/mobstat/da$a$2;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/da$a$2;-><init>(Lcom/baidu/mobstat/da$a;Lcom/baidu/mobstat/df;)V

    .line 336
    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;Lorg/json/JSONObject;Lcom/baidu/mobstat/df;Landroid/os/Handler;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/mobstat/df;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    if-nez p4, :cond_6

    return-void

    .line 279
    :cond_6
    new-instance v6, Lcom/baidu/mobstat/da$a$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/da$a$1;-><init>(Lcom/baidu/mobstat/da$a;Ljava/lang/ref/WeakReference;ZLcom/baidu/mobstat/df;Lorg/json/JSONObject;)V

    .line 309
    iget-object p1, p0, Lcom/baidu/mobstat/da$a;->l:Ljava/lang/Runnable;

    if-eqz p1, :cond_18

    .line 310
    invoke-virtual {p4, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    :cond_18
    iput-object v6, p0, Lcom/baidu/mobstat/da$a;->l:Ljava/lang/Runnable;

    .line 314
    const-wide/16 p1, 0x1f4

    invoke-virtual {p4, v6, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/da$a;)Z
    .registers 1

    .line 144
    iget-boolean p0, p0, Lcom/baidu/mobstat/da$a;->k:Z

    return p0
.end method

.method private b()V
    .registers 3

    .line 235
    iget-boolean v0, p0, Lcom/baidu/mobstat/da$a;->b:Z

    if-eqz v0, :cond_22

    .line 236
    iget-object v0, p0, Lcom/baidu/mobstat/da$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 243
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 248
    :cond_1b
    iget-object v0, p0, Lcom/baidu/mobstat/da$a;->d:Lcom/baidu/mobstat/df;

    iget-object v1, p0, Lcom/baidu/mobstat/da$a;->f:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/da$a;->a(Lcom/baidu/mobstat/df;Landroid/os/Handler;)V

    .line 250
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/da$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 227
    iget-boolean v0, p0, Lcom/baidu/mobstat/da$a;->a:Z

    if-nez v0, :cond_c

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/da$a;->a:Z

    .line 229
    iget-object v0, p0, Lcom/baidu/mobstat/da$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 172
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->isCloseTrace()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    invoke-direct {p0}, Lcom/baidu/mobstat/da$a;->b()V

    return-void

    .line 178
    :cond_e
    invoke-virtual {p0}, Lcom/baidu/mobstat/da$a;->run()V

    return-void
.end method

.method public run()V
    .registers 10

    .line 183
    iget-boolean v0, p0, Lcom/baidu/mobstat/da$a;->b:Z

    if-nez v0, :cond_5

    return-void

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/da$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_97

    .line 188
    iget-boolean v0, p0, Lcom/baidu/mobstat/da$a;->a:Z

    if-eqz v0, :cond_15

    goto/16 :goto_97

    .line 193
    :cond_15
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    const-string v1, "onGlobalLayout"

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/baidu/mobstat/da$a;->k:Z

    if-eqz v0, :cond_2c

    .line 194
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 196
    :cond_2c
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 197
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 201
    :cond_3d
    invoke-static {}, Lcom/baidu/mobstat/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 204
    invoke-static {}, Lcom/baidu/mobstat/cu;->c()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 205
    iget-object v0, p0, Lcom/baidu/mobstat/da$a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_91

    .line 208
    iget-boolean v1, p0, Lcom/baidu/mobstat/da$a;->i:Z

    iget-boolean v2, p0, Lcom/baidu/mobstat/da$a;->k:Z

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/da;->a(Landroid/app/Activity;ZZ)V

    .line 211
    iget-object v4, p0, Lcom/baidu/mobstat/da$a;->h:Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/baidu/mobstat/da$a;->g:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/baidu/mobstat/da$a;->d:Lcom/baidu/mobstat/df;

    iget-object v7, p0, Lcom/baidu/mobstat/da$a;->f:Landroid/os/Handler;

    iget-boolean v8, p0, Lcom/baidu/mobstat/da$a;->j:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/baidu/mobstat/da$a;->a(Ljava/lang/ref/WeakReference;Lorg/json/JSONObject;Lcom/baidu/mobstat/df;Landroid/os/Handler;Z)V

    goto :goto_91

    .line 214
    :cond_69
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/cy;->b()Z

    move-result v0

    const-string v1, "no touch, skip onGlobalLayout"

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lcom/baidu/mobstat/da$a;->k:Z

    if-eqz v0, :cond_80

    .line 215
    invoke-static {}, Lcom/baidu/mobstat/cy;->c()Lcom/baidu/mobstat/cy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cy;->a(Ljava/lang/String;)V

    .line 217
    :cond_80
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 218
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/String;)V

    .line 223
    :cond_91
    :goto_91
    iget-object v0, p0, Lcom/baidu/mobstat/da$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 189
    :cond_97
    :goto_97
    invoke-direct {p0}, Lcom/baidu/mobstat/da$a;->b()V

    return-void
.end method
