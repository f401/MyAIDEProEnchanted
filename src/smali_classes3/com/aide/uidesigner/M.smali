.class final Lcom/aide/uidesigner/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aide/uidesigner/N$a;",
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x2703a589b2afad3L

    const-wide v2, 0x20c590a5e54b0f40L  # 8.23497481293384E-151

    const-class v4, Lcom/aide/uidesigner/M;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/aide/uidesigner/N$a;

    check-cast p2, Lcom/aide/uidesigner/N$a;

    invoke-virtual {p0, p1, p2}, Lcom/aide/uidesigner/M;->j6(Lcom/aide/uidesigner/N$a;Lcom/aide/uidesigner/N$a;)I

    move-result p1

    return p1
.end method

.method public j6(Lcom/aide/uidesigner/N$a;Lcom/aide/uidesigner/N$a;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x306f367fb606b070L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/M;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x5334092fc3f0ccecL  # -6.7030494998738165E-93

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/M;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, -0x5334092fc3f0ccecL  # -6.7030494998738165E-93

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method
