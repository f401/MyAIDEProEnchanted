.class public Lcom/aide/ui/views/editor/g$e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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
.field public FH:[C

.field public Hw:I

.field public v5:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/g$e;

    const-wide v1, 0x22712076bf3bec57L  # 8.778060966538697E-143

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>([CIJ)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x1ac561d124cf164bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$e;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x1ce2fc727d4e273cL  # -2.737432137020488E169

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/g$e;->FH:[C

    iput p2, p0, Lcom/aide/ui/views/editor/g$e;->Hw:I

    iput-wide p3, p0, Lcom/aide/ui/views/editor/g$e;->v5:J
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$e;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x1ce2fc727d4e273cL  # -2.737432137020488E169

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p3, p4}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method synthetic constructor <init>([CIJLcom/aide/ui/views/editor/d;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g$e;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0xfdaa56757f022f8L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/g$e;-><init>([CIJ)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g$e;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0xfdaa56757f022f8L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p3, p4}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v5, p1

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method
