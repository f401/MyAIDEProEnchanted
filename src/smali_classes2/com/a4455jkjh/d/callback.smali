.class public Lcom/a4455jkjh/d/callback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private c:Lcom/a4455jkjh/d/c;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a4455jkjh/d/c;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a4455jkjh/d/callback;->c:Lcom/a4455jkjh/d/c;

    iput-object p2, p0, Lcom/a4455jkjh/d/callback;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/a4455jkjh/d/callback;->c:Lcom/a4455jkjh/d/c;

    invoke-static {v0}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;)Lcom/aide/ui/build/android/B;

    move-result-object v0

    iget-object v1, p0, Lcom/a4455jkjh/d/callback;->msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/fb;->DW(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V

    return-void
.end method
