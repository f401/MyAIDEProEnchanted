.class Lcom/a4455jkjh/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/a4455jkjh/d/c;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/a4455jkjh/d/c;Z)V
    .registers 3

    iput-object p1, p0, Lcom/a4455jkjh/d/g;->a:Lcom/a4455jkjh/d/c;

    iput-boolean p2, p0, Lcom/a4455jkjh/d/g;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/a4455jkjh/d/g;->a:Lcom/a4455jkjh/d/c;

    invoke-static {v0}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;)Lcom/aide/ui/build/android/B;

    move-result-object v0

    iget-boolean v1, p0, Lcom/a4455jkjh/d/g;->b:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/fb;->j6(Lcom/aide/ui/build/android/B;Z)Z

    :cond_e
    invoke-static {v0}, Lcom/aide/ui/build/android/fb;->EQ(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/aide/ui/build/android/fb;->J0(Lcom/aide/ui/build/android/B;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/ui/build/android/fb;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
