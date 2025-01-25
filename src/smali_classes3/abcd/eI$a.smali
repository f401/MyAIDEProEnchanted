.class Labcd/eI$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/eI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/eI$a;)V
    .registers 2

    invoke-direct {p0}, Labcd/eI$a;-><init>()V

    return-void
.end method
