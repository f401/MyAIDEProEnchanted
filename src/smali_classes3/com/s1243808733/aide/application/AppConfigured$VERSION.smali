.class public Lcom/s1243808733/aide/application/AppConfigured$VERSION;
.super Ljava/lang/Object;
.source "AppConfigured.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/AppConfigured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static BASE:I


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    sput v0, Lcom/s1243808733/aide/application/AppConfigured$VERSION;->BASE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
