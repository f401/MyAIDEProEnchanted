.class Lcom/a4455jkjh/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/a4455jkjh/d/c;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/a4455jkjh/d/c;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/a4455jkjh/d/f;->a:Lcom/a4455jkjh/d/c;

    iput-object p2, p0, Lcom/a4455jkjh/d/f;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/a4455jkjh/d/f;->a:Lcom/a4455jkjh/d/c;

    invoke-static {v0}, Lcom/a4455jkjh/d/c;->a(Lcom/a4455jkjh/d/c;)Lcom/aide/ui/build/android/B;

    move-result-object v0

    const-string v1, "Proguard"

    iget-object v2, p0, Lcom/a4455jkjh/d/f;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/aide/ui/build/android/fb;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/aide/ui/build/android/fb;->QX(Lcom/aide/ui/build/android/B;)V

    return-void
.end method
