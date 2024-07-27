.class Lcom/a4455jkjh/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/a4455jkjh/d/c;


# direct methods
.method constructor <init>(Lcom/a4455jkjh/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/a4455jkjh/d/e;->a:Lcom/a4455jkjh/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/a4455jkjh/d/e;->a:Lcom/a4455jkjh/d/c;

    invoke-static {v0}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;)Lcom/aide/ui/build/android/B;

    move-result-object v0

    const-string v1, "Proguard failed!"

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/fb;->DW(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V

    return-void
.end method
