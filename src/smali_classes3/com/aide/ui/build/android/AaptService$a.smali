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
        "Ljava/util/concurrent/Callable<",
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
            "Ljava/util/List<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/AaptService$a;

    const-wide v1, -0x64cb9205280fbdb8L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
            "Ljava/util/List<",
            "Lcom/aide/ui/build/android/AaptService$c;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/AaptService$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1f3dc374c3ca6d60L  # -1.251898795114248E158

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/android/AaptService$a;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/build/android/AaptService$a;->FH:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/AaptService$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x1f3dc374c3ca6d60L  # -1.251898795114248E158

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public call()Lcom/aide/ui/build/android/AaptService$b;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x256b29bd12da7c88L
    .end annotation

    const-wide v0, -0x19edd94176c84347L  # -4.820434434941179E183

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/AaptService$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$a;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/build/android/AaptService$c;

    invoke-virtual {v4}, Lcom/aide/ui/build/android/AaptService$c;->j6()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v5

    iget-boolean v6, v5, Lcom/aide/ui/build/android/AaptService$b;->FH:Z

    or-int/2addr v3, v6

    iget-object v6, v5, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    if-eqz v6, :cond_13

    iget-object v2, p0, Lcom/aide/ui/build/android/AaptService$a;->Hw:Lcom/aide/ui/build/android/AaptService;

    invoke-static {v4}, Lcom/aide/ui/build/android/AaptService$c;->j6(Lcom/aide/ui/build/android/AaptService$c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/aide/ui/build/android/AaptService$c;->DW(Lcom/aide/ui/build/android/AaptService$c;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, v5, Lcom/aide/ui/build/android/AaptService$b;->Hw:Ljava/lang/String;

    invoke-static {v2, v3, v4, v6}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/AaptService;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v5, Lcom/aide/ui/build/android/AaptService$b;->v5:Ljava/util/Map;

    return-object v5

    :cond_3d
    new-instance v2, Lcom/aide/ui/build/android/AaptService$b;

    invoke-direct {v2, v3}, Lcom/aide/ui/build/android/AaptService$b;-><init>(Z)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-object v2

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/AaptService$a;->DW:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/build/android/AaptService$a;->call()Lcom/aide/ui/build/android/AaptService$b;

    move-result-object v0

    return-object v0
.end method
