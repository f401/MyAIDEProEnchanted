.class Labcd/NJ$a;
.super Labcd/NJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/NJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/NJ;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/NJ$a;)V
    .registers 2

    invoke-direct {p0}, Labcd/NJ$a;-><init>()V

    return-void
.end method


# virtual methods
.method DW(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 4

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, v0}, Labcd/NJ;->j6(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method j6(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    return-object p1
.end method

.method j6(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 2

    return-object p1
.end method

.method j6(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
