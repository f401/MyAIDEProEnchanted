.class Lcom/sun/tools/javac/processing/ServiceProxy$ServiceConfigurationError;
.super Ljava/lang/Error;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/processing/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceConfigurationError"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x6b4de7d4e1b91ebfL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
