.class public Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent;
.super Lcom/upsight/android/analytics/internal/AnalyticsEvent;
.source "UpsightContentDismissEvent.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.content.dismiss"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;,
        Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/analytics/internal/AnalyticsEvent",
        "<",
        "Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>()V

    .line 231
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "upsightData"    # Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;
    .param p3, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 227
    return-void
.end method

.method public static createBuilder(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;
    .locals 1
    .param p0, "streamId"    # Ljava/lang/String;
    .param p1, "contentId"    # Ljava/lang/Integer;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0
.end method
