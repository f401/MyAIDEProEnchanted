.class public final Lcom/google/firebase/iid/Registrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/Registrar$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/b<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/FirebaseApp;

    invoke-static {v1}, Lcom/google/firebase/components/f;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;

    const-class v1, Labcd/zy;

    invoke-static {v1}, Lcom/google/firebase/components/f;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;

    sget-object v1, Lcom/google/firebase/iid/p;->j6:Lcom/google/firebase/components/d;

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/b$a;

    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->j6()Lcom/google/firebase/components/b$a;

    invoke-virtual {v0}, Lcom/google/firebase/components/b$a;->DW()Lcom/google/firebase/components/b;

    move-result-object v0

    const-class v1, Labcd/Ay;

    invoke-static {v1}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/b$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v2}, Lcom/google/firebase/components/f;->j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/f;)Lcom/google/firebase/components/b$a;

    sget-object v2, Lcom/google/firebase/iid/q;->j6:Lcom/google/firebase/components/d;

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/b$a;->j6(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/b$a;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/firebase/components/b;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/google/firebase/components/b$a;->DW()Lcom/google/firebase/components/b;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
