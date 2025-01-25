.class final Lcom/aide/uidesigner/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/e;->DW(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
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

    const-wide v0, -0x258a95d2fdbbf9dfL  # -5.798440072010822E127

    const-wide v2, 0x465af95e230ac8f0L  # 8.54843118930082E30

    const-class v4, Lcom/aide/uidesigner/d;

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

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/aide/uidesigner/d;->j6(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public j6(Ljava/io/File;Ljava/io/File;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x38e2189f36c200L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/d;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x4cbfba362f7ad5c5L  # 5.0983948918621624E61

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return p1

    :catchall_19
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/d;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, 0x4cbfba362f7ad5c5L  # 5.0983948918621624E61

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method
