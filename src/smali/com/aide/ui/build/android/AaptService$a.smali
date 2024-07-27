.class Lcom/aide/ui/build/android/AaptService$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/AaptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/aide/ui/build/android/AaptService$b;",
        ">;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x21714de2f2faae73L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/build/android/AaptService$c;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/build/android/AaptService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x64cb9205280fbdb8L

    const-class v0, Lcom/aide/ui/build/android/AaptService$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/AaptService;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x59816ca5919d8a6dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/build/android/AaptService$c;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x1f3dc374c3ca6d60L    # -1.251898795114248E158

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f3dc374c3ca6d60L    # -1.251898795114248E158

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService$a;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/build/android/AaptService$a;->FH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public call()Lcom/aide/ui/build/android/AaptService$b;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x256b29bd12da7c88L
    .end annotation

    const-wide v6, -0x19edd94176c84347L    # -4.820434434941179E183

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19edd94176c84347L    # -4.820434434941179E183

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aide/ui/build/android/AaptService$a;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/build/android/AaptService$c;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/AaptService$c;->j6()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v1

    iget-boolean v4, v1, Lcom/aide/ui/build/android/AaptService$b;->FH:Z

    or-int/2addr v2, v4

    iget-object v4, v1, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$a;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-static {v0}, Lcom/aide/ui/build/android/AaptService$c;->j6(Lcom/aide/ui/build/android/AaptService$c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/aide/ui/build/android/AaptService$c;->DW(Lcom/aide/ui/build/android/AaptService$c;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/aide/ui/build/android/AaptService$b;->v5:Ljava/util/Map;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v0, v2}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/build/android/AaptService$a;->call()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v0

    return-object v0
.end method
