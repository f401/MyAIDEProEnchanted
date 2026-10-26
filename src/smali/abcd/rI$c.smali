.class Labcd/rI$c;
.super Labcd/rI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/rI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/rI;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/rI$c;)V
    .locals 0

    invoke-direct {p0}, Labcd/rI$c;-><init>()V

    return-void
.end method


# virtual methods
.method j6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method j6(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method
