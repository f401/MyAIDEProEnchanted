.class Lcom/aide/ui/activities/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/aide/engine/SourceEntity;",
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/activities/GotoBrowserActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v2, 0x2b18382161dd4704L  # 4.325360639027159E-101

    const-class v4, Lcom/aide/ui/activities/y;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/GotoBrowserActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/y;->Hw:Lcom/aide/ui/activities/GotoBrowserActivity;

    iput-object p2, p0, Lcom/aide/ui/activities/y;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/aide/engine/SourceEntity;

    check-cast p2, Lcom/aide/engine/SourceEntity;

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/activities/y;->j6(Lcom/aide/engine/SourceEntity;Lcom/aide/engine/SourceEntity;)I

    move-result p1

    return p1
.end method

.method public j6(Lcom/aide/engine/SourceEntity;Lcom/aide/engine/SourceEntity;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x92a5e24459f33fdL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/y;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3ee257c582386c77L  # 8.746556040375851E-6

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/activities/y;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/activities/y;->FH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_36

    if-nez v1, :cond_36

    const/4 p1, -0x1

    return p1

    :cond_36
    if-nez v0, :cond_3c

    if-eqz v1, :cond_3c

    const/4 p1, 0x1

    return p1

    :cond_3c
    invoke-virtual {p1}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/aide/engine/SourceEntity;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_49

    return p1

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/y;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x3ee257c582386c77L  # 8.746556040375851E-6

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method
