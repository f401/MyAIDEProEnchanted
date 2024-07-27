.class public Labcd/Dw$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:J

.field public final Hw:J

.field public final VH:Ljava/lang/String;

.field public final Zo:J

.field public final j6:Ljava/lang/String;

.field public final v5:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "country"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$a;->j6:Ljava/lang/String;

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$a;->DW:Ljava/lang/String;

    const-string v0, "uid"

    invoke-static {p1, v0}, Labcd/Dw;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Dw$a;->Zo:J

    const-string v0, "referral_link"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Labcd/Dw$a;->VH:Ljava/lang/String;

    const-string v0, "quota_info"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "quota"

    invoke-static {v0, v1}, Labcd/Dw;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Dw$a;->FH:J

    const-string v1, "normal"

    invoke-static {v0, v1}, Labcd/Dw;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/Dw$a;->Hw:J

    const-string v1, "shared"

    invoke-static {v0, v1}, Labcd/Dw;->DW(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Dw$a;->v5:J

    return-void
.end method
