.class public final Labcd/_x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/_x$a;
    }
.end annotation


# static fields
.field static final DW:Ljava/util/concurrent/Executor;

.field public static final j6:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/_x$a;

    invoke-direct {v0}, Labcd/_x$a;-><init>()V

    sput-object v0, Labcd/_x;->j6:Ljava/util/concurrent/Executor;

    new-instance v0, Labcd/py;

    invoke-direct {v0}, Labcd/py;-><init>()V

    sput-object v0, Labcd/_x;->DW:Ljava/util/concurrent/Executor;

    return-void
.end method
