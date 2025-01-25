.class public Labcd/jQ;
.super Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "yyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
