.class public interface abstract Labcd/cN;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/zL;

.field public static final j6:Labcd/zL;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/zL;

    const-string v1, "1.2.410.200004.1.4"

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/cN;->j6:Labcd/zL;

    new-instance v0, Labcd/zL;

    const-string v1, "1.2.410.200004.7.1.1.1"

    invoke-direct {v0, v1}, Labcd/zL;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/cN;->DW:Labcd/zL;

    return-void
.end method
