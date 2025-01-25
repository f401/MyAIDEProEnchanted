.class Lcom/aide/ui/build/android/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/aide/engine/SyntaxError;",
        ">;>;>;"
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
        field = -0x51b4d38aa1d538L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/build/android/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/build/android/a;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/a$a;

    const-wide v1, 0x5a838b70bb285e98L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/a;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x44cc5974b678c620L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/ui/build/android/a$b;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x10da6f6555c33803L  # -2.5543087241089867E227

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/build/android/a$a;->Hw:Lcom/aide/ui/build/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/build/android/a$a;->FH:Ljava/util/List;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$a;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x10da6f6555c33803L  # -2.5543087241089867E227

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/ui/build/android/a$a;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1f29d89ed264d3a3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    const-wide v0, 0x287945a14051be0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/a$a;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/build/android/a$b;

    invoke-virtual {v3}, Lcom/aide/ui/build/android/a$b;->j6()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    iget-object v2, p0, Lcom/aide/ui/build/android/a$a;->Hw:Lcom/aide/ui/build/android/a;

    invoke-static {v3}, Lcom/aide/ui/build/android/a$b;->j6(Lcom/aide/ui/build/android/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_31

    return-object v0

    :cond_2f
    const/4 v0, 0x0

    return-object v0

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a$a;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method
