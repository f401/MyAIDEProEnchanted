.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/e;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/components/b",
            "<*>;>;"
        }
    .end annotation

    const-class v0, Labcd/sy;

    invoke-static {v0}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/FirebaseApp;

    invoke-static {v1}, Lcom/google/firebase/components/f;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/components/f;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;

    const-class v1, Labcd/zy;

    invoke-static {v1}, Lcom/google/firebase/components/f;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;

    sget-object v1, Lcom/google/firebase/analytics/connector/internal/a;->j6:Lcom/google/firebase/components/d;

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/b$a;

    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->FH()Lcom/google/firebase/components/b$a;

    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->DW()Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
